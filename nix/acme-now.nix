{
  "1.0.0" = {
    sha256 = "c628640757a04fcde3f4856a5feed9ca3d25bb506aea6c114e1be73142803428";
    revisions = {
      r0 = {
        nix = import ../hackage/acme-now-1.0.0-r0-b245e07228a6849899f74a3d15166615a10f8ec19ce6814069f40bfb1f80baca.nix;
        revNum = 0;
        sha256 = "b245e07228a6849899f74a3d15166615a10f8ec19ce6814069f40bfb1f80baca";
      };
      default = "r0";
    };
  };
  "1.0.0.1" = {
    sha256 = "55f34fa960eecf16317414f4bfc4baa4966164b95526f8f65900e4d39bd5d952";
    revisions = {
      r0 = {
        nix = import ../hackage/acme-now-1.0.0.1-r0-aaa66583bfdbcb9f64a06c126643d2f3cd979e893430a16e3e3d3aa186509637.nix;
        revNum = 0;
        sha256 = "aaa66583bfdbcb9f64a06c126643d2f3cd979e893430a16e3e3d3aa186509637";
      };
      default = "r0";
    };
  };
}