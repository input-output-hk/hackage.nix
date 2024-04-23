{
  "0.1" = {
    sha256 = "675c275193b85b610369023ccdceeb4b376ea2455830931fa36b9eaa0e53f7e6";
    revisions = {
      r0 = {
        nix = import ../hackage/hsConfigure-0.1-r0-6bfd59b75182ad822f48de15a45a8293d09fbc4d6262a5f84b5b9c0674b2125c.nix;
        revNum = 0;
        sha256 = "6bfd59b75182ad822f48de15a45a8293d09fbc4d6262a5f84b5b9c0674b2125c";
      };
      default = "r0";
    };
  };
  "0.1.0.2" = {
    sha256 = "6cf0e57e4b7c9bdfcb1a9d6c88cc0d35402ec10a242cef0d01a50d2885fa3aa5";
    revisions = {
      r0 = {
        nix = import ../hackage/hsConfigure-0.1.0.2-r0-1f9fdb15ab5454ca009a45bc523fc3dbf7ae56be0a75ef9b7321de8a937f555a.nix;
        revNum = 0;
        sha256 = "1f9fdb15ab5454ca009a45bc523fc3dbf7ae56be0a75ef9b7321de8a937f555a";
      };
      r1 = {
        nix = import ../hackage/hsConfigure-0.1.0.2-r1-f771d309f95a0d1886b407cd2f132a6ed13dd8278ea5dde32100f6b52728a249.nix;
        revNum = 1;
        sha256 = "f771d309f95a0d1886b407cd2f132a6ed13dd8278ea5dde32100f6b52728a249";
      };
      r2 = {
        nix = import ../hackage/hsConfigure-0.1.0.2-r2-ab3264ebf799e07e40fd913b9061197b346a7d84145908566155231e62a45c02.nix;
        revNum = 2;
        sha256 = "ab3264ebf799e07e40fd913b9061197b346a7d84145908566155231e62a45c02";
      };
      default = "r2";
    };
  };
}