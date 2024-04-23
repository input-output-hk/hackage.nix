{
  "0" = {
    sha256 = "accac9cecb7e94059b351b35fca0928be257b2480178b5a53594175970ed50a4";
    revisions = {
      r0 = {
        nix = import ../hackage/miss-porcelain-0-r0-ae100d806d8a72b6a63e3062d8999a194543fb7b4602b1335e54eaf0f5f7c345.nix;
        revNum = 0;
        sha256 = "ae100d806d8a72b6a63e3062d8999a194543fb7b4602b1335e54eaf0f5f7c345";
      };
      r1 = {
        nix = import ../hackage/miss-porcelain-0-r1-147bfb55736d52c19c2d98bbae4288f556d2a87777712203c7f9f5b22985c886.nix;
        revNum = 1;
        sha256 = "147bfb55736d52c19c2d98bbae4288f556d2a87777712203c7f9f5b22985c886";
      };
      default = "r1";
    };
  };
}