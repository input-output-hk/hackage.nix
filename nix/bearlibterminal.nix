{
  "0.1.0.0" = {
    sha256 = "63426ab507cc99368134a1fc695c7bbb66493c6774c2e5e156d92c11735cc905";
    revisions = {
      r0 = {
        nix = import ../hackage/bearlibterminal-0.1.0.0-r0-bc2e0fc5215d687874574b81ea5b53f40ca82832f6741ee9a81f2a3a763e54e0.nix;
        revNum = 0;
        sha256 = "bc2e0fc5215d687874574b81ea5b53f40ca82832f6741ee9a81f2a3a763e54e0";
      };
      default = "r0";
    };
  };
  "0.1.0.1" = {
    sha256 = "b24a77fe9d37dedd67a86cf5e7c928a4a0d7ed28c902955159163c366794dd70";
    revisions = {
      r0 = {
        nix = import ../hackage/bearlibterminal-0.1.0.1-r0-3c9f02d16093047f7138958eb3868c1084a5c40c8bbf731b865de133a6e0cd25.nix;
        revNum = 0;
        sha256 = "3c9f02d16093047f7138958eb3868c1084a5c40c8bbf731b865de133a6e0cd25";
      };
      r1 = {
        nix = import ../hackage/bearlibterminal-0.1.0.1-r1-49dad791584efa8e0a8525433bc46e944d0e39f060f3331f2cb1b6fec430fd0a.nix;
        revNum = 1;
        sha256 = "49dad791584efa8e0a8525433bc46e944d0e39f060f3331f2cb1b6fec430fd0a";
      };
      default = "r1";
    };
  };
}