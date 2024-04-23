{
  "0.1.0.0" = {
    sha256 = "6bdcc503ca1603d7a2ad787fd57dc5e25a06bbf05530f89718ca1be832660436";
    revisions = {
      r0 = {
        nix = import ../hackage/servant-named-0.1.0.0-r0-fa6b587d19a30942ba39cdb178070af4fa54664c9caf46e3c7b7f4c6db5e0be7.nix;
        revNum = 0;
        sha256 = "fa6b587d19a30942ba39cdb178070af4fa54664c9caf46e3c7b7f4c6db5e0be7";
      };
      r1 = {
        nix = import ../hackage/servant-named-0.1.0.0-r1-d70d4ea512a093bcebd72dca206e85e016b96ed90bb30e92d2d02fe6eb43281e.nix;
        revNum = 1;
        sha256 = "d70d4ea512a093bcebd72dca206e85e016b96ed90bb30e92d2d02fe6eb43281e";
      };
      r2 = {
        nix = import ../hackage/servant-named-0.1.0.0-r2-5a05b717a5676672ec5ce3815b1a702165b6828bd421605920a5a8b02ad3211b.nix;
        revNum = 2;
        sha256 = "5a05b717a5676672ec5ce3815b1a702165b6828bd421605920a5a8b02ad3211b";
      };
      default = "r2";
    };
  };
}