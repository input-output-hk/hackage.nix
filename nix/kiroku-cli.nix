{
  "0.1.0.0" = {
    sha256 = "ae826a5a0a7be852a3c7f980fc8f0cd8cdd3ff0635368e69f6b19aa6ffe7e5b7";
    revisions = {
      r0 = {
        nix = import ../hackage/kiroku-cli-0.1.0.0-r0-be40b04c4b32cd19edf7121e67c870c022ab8a983f69d3a4ff44ef5f7194da60.nix;
        revNum = 0;
        sha256 = "be40b04c4b32cd19edf7121e67c870c022ab8a983f69d3a4ff44ef5f7194da60";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "b2567c23f6425f8dc756875303634c574b3cd6b552884a013868a8cb7cfadf57";
    revisions = {
      r0 = {
        nix = import ../hackage/kiroku-cli-0.2.0.0-r0-04e0d3d30100817792d8ec0e5cbf3ddd80913c6e765c495f93ada01c81aca329.nix;
        revNum = 0;
        sha256 = "04e0d3d30100817792d8ec0e5cbf3ddd80913c6e765c495f93ada01c81aca329";
      };
      default = "r0";
    };
  };
}