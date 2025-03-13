{
  "0.1.0.0" = {
    sha256 = "a3f2b0d7e7ce3c3ae2514cea46eade3d3f742232637ce741151bb98ea00e2060";
    revisions = {
      r0 = {
        nix = import ../hackage/vext-0.1.0.0-r0-3ab4cf1dd2ec62d9ade71f7a9c55b99ed1378016c079b899bb0876a58ca18c68.nix;
        revNum = 0;
        sha256 = "3ab4cf1dd2ec62d9ade71f7a9c55b99ed1378016c079b899bb0876a58ca18c68";
      };
      default = "r0";
    };
  };
  "0.1.1.0" = {
    sha256 = "1bdc1c8fd7c3cd62bc2ca39f0de403c2e65053097deecddfad309ee98669547d";
    revisions = {
      r0 = {
        nix = import ../hackage/vext-0.1.1.0-r0-c73ee072bb77af26aa5814752db27512272af274698eea74358a1de8a9ba5423.nix;
        revNum = 0;
        sha256 = "c73ee072bb77af26aa5814752db27512272af274698eea74358a1de8a9ba5423";
      };
      default = "r0";
    };
  };
}