{
  "0.1.0" = {
    sha256 = "f89d00dc4d95af81c4620f105b792b4a47be557c23f72838dcabf6a2ab0910cc";
    revisions = {
      r0 = {
        nix = import ../hackage/nanomsg-0.1.0-r0-6517dd9093796321836a92baa62f4f8192023454b976bb1c91807efda1e7779a.nix;
        revNum = 0;
        sha256 = "6517dd9093796321836a92baa62f4f8192023454b976bb1c91807efda1e7779a";
      };
      default = "r0";
    };
  };
  "0.1.1" = {
    sha256 = "e3364e1c9c00931fc8d750d7804b16ce9c86fb18bd23db4c3e3fca2e87464b1a";
    revisions = {
      r0 = {
        nix = import ../hackage/nanomsg-0.1.1-r0-ed315e43f913de9cd71834de086148acd28ae45dc7022560a64fec39a3281c6a.nix;
        revNum = 0;
        sha256 = "ed315e43f913de9cd71834de086148acd28ae45dc7022560a64fec39a3281c6a";
      };
      default = "r0";
    };
  };
}