{
  "0.0.0" = {
    sha256 = "422f7e27c550878c9b0b05146cd935d775bf1fbf8f8b163c0923ed1b6f99e4c0";
    revisions = {
      r0 = {
        nix = import ../hackage/sockaddr-0.0.0-r0-abd855de908f0b846409335d60ffc69b279ff869f9575fb85934f4fe0d378867.nix;
        revNum = 0;
        sha256 = "abd855de908f0b846409335d60ffc69b279ff869f9575fb85934f4fe0d378867";
      };
      default = "r0";
    };
  };
  "0.0.1" = {
    sha256 = "e4a1e071d9be61cf0409cd2d8fcceb99af81284d655d121861e6d8252c73f56b";
    revisions = {
      r0 = {
        nix = import ../hackage/sockaddr-0.0.1-r0-509bebd377a2f3649d27ad1d40afedf76169883644475497b22d308ed79b27c9.nix;
        revNum = 0;
        sha256 = "509bebd377a2f3649d27ad1d40afedf76169883644475497b22d308ed79b27c9";
      };
      default = "r0";
    };
  };
}