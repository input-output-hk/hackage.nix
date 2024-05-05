{
  "0.1.0.0" = {
    sha256 = "aa937866860d3c47d55868ee25d30f764065fc8ee09260dcb42ef4d7e39703d6";
    revisions = {
      r0 = {
        nix = import ../hackage/bluefin-algae-0.1.0.0-r0-72b6dbe7af162da327775be85ab408c5f405d789932dbdcc706ff74644dd105f.nix;
        revNum = 0;
        sha256 = "72b6dbe7af162da327775be85ab408c5f405d789932dbdcc706ff74644dd105f";
      };
      default = "r0";
    };
  };
  "0.1.0.1" = {
    sha256 = "85ab741f0febeaf3c2bc8409113556a482744fee35a21357d328486794d3c7d5";
    revisions = {
      r0 = {
        nix = import ../hackage/bluefin-algae-0.1.0.1-r0-1d9b893f1ace99b392b12cf1ad1cafb89017070eed61aa57c44af6f2301058ca.nix;
        revNum = 0;
        sha256 = "1d9b893f1ace99b392b12cf1ad1cafb89017070eed61aa57c44af6f2301058ca";
      };
      default = "r0";
    };
  };
}