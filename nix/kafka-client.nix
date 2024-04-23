{
  "0.7.0.0" = {
    sha256 = "221f3b02c778df63fa632da48f2f507a9f2287c760e02d2599e1ad8cf1215fe1";
    revisions = {
      r0 = {
        nix = import ../hackage/kafka-client-0.7.0.0-r0-fc65486b12a824ac225f18d536b049572d4ec4bcc6fb63a3293407c977a8782c.nix;
        revNum = 0;
        sha256 = "fc65486b12a824ac225f18d536b049572d4ec4bcc6fb63a3293407c977a8782c";
      };
      r1 = {
        nix = import ../hackage/kafka-client-0.7.0.0-r1-2a9089e946bf6bbb67d9e464a672da4b958775a2572faf78554f1d2875eb7357.nix;
        revNum = 1;
        sha256 = "2a9089e946bf6bbb67d9e464a672da4b958775a2572faf78554f1d2875eb7357";
      };
      default = "r1";
    };
  };
  "0.7.0.1" = {
    sha256 = "51b9180a78da95ad92a009165ad0bb068ec22374561fd70f6f79389af4d0e794";
    revisions = {
      r0 = {
        nix = import ../hackage/kafka-client-0.7.0.1-r0-b13f36b597cc0a869fb2c364d9285f73a9e66965d79ecdd0beb3fc42ae84a87c.nix;
        revNum = 0;
        sha256 = "b13f36b597cc0a869fb2c364d9285f73a9e66965d79ecdd0beb3fc42ae84a87c";
      };
      default = "r0";
    };
  };
}