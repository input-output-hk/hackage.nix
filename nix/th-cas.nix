{
  "0.1.0" = {
    sha256 = "6caab40db7a8aba41760c1b4ef884f52de0905ff8865dd7f6ab7ca5446b9653f";
    revisions = {
      r0 = {
        nix = import ../hackage/th-cas-0.1.0-r0-528dd04aa58da5338d945a5cfa6939e3b34b7003173ae0037384970ac9d1556e.nix;
        revNum = 0;
        sha256 = "528dd04aa58da5338d945a5cfa6939e3b34b7003173ae0037384970ac9d1556e";
      };
      default = "r0";
    };
  };
  "0.2.0" = {
    sha256 = "96163220711f5051732553731353575a70384d7d300ae50800db646bdf52893f";
    revisions = {
      r0 = {
        nix = import ../hackage/th-cas-0.2.0-r0-e2f973084728831ba7075b39c721023af342bcf362936ce218fb7cd55f19ab31.nix;
        revNum = 0;
        sha256 = "e2f973084728831ba7075b39c721023af342bcf362936ce218fb7cd55f19ab31";
      };
      default = "r0";
    };
  };
}