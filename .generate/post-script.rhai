// Rename Cargo.toml.jinja to Cargo.toml.
file::rename("Cargo.toml.jinja", "Cargo.toml");
file::rename("Justfile.jinja", "Justfile");
file::rename(".github/workflows/test.yml.jinja", ".github/workflows/test.yml");

// Remove the .generate folder.
file::delete(".generate");

// Format.
system::command("cargo", ["tool", "just", "format-fix"]);

// Verify everything is groovy if "test" is set
let test = variable::get("test");
if test {
  system::command("cargo", ["tool", "just", "check"]);
  system::command("cargo", ["tool", "just", "test-all"]);
};

()
