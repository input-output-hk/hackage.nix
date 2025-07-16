{
  "0.1.0.1" = {
    sha256 = "9680323c1834d1a1f878eacfcf8e5a9f2696a6d1b12f4bceb8297ed7952950ef";
    revisions = {
      r0 = {
        nix = import ../hackage/thrift-http-0.1.0.1-r0-aeb4cdaf61f12e61f8271fe254e5a696befdc7e16412b3768f7969da4d5347c2.nix;
        revNum = 0;
        sha256 = "aeb4cdaf61f12e61f8271fe254e5a696befdc7e16412b3768f7969da4d5347c2";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "3749fb1d2009241eb8738ff27f08f1b557369c448e622a775947506715479a58";
    revisions = {
      r0 = {
        nix = import ../hackage/thrift-http-0.2.0.0-r0-cb449981dec089117f34702693cccc500b3566c3c9ea71220129dc56dff10d87.nix;
        revNum = 0;
        sha256 = "cb449981dec089117f34702693cccc500b3566c3c9ea71220129dc56dff10d87";
      };
      default = "r0";
    };
  };
}