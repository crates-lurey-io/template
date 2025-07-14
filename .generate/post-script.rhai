// Rename Cargo.toml.jinja to Cargo.toml.
file::rename("Cargo.toml.jinja", "Cargo.toml");
file::rename("Justfile.jinja", "Justfile");
file::rename("CHANGELOG.md.jinja", "CHANGELOG.md");
file::rename("README.md.jinja", "README.md");
file::rename(".github/workflows/test.yml.tmpl", ".github/workflows/test.yml");

let wasm = variable::get("wasm");
if wasm {
  let crate_type = variable::get("crate_type");
  if crate_type != "lib" {
      abort("Wasm projects must have crate_type = 'lib'.");
  }
  file::rename("src/lib.wasm.rs", "src/lib.rs")
}

// Remove the .generate folder.
file::delete(".generate");

// Format.
system::command("cargo", ["just", "format-fix"]);

// Verify everything is groovy if "test" is set
let test = variable::get("test");
if test {
  system::command("cargo", ["just", "check"]);
  system::command("cargo", ["just", "test-all"]);
};

()
