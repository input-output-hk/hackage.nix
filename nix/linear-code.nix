{
  "0.1.0" = {
    sha256 = "288e61d01fd33b2f4b3611caf1e657bfd5508eb4b10aea6ea6d24ab557de732f";
    revisions = {
      r0 = {
        nix = import ../hackage/linear-code-0.1.0-r0-3bab96fc454c6557854506cfe54d187a49a6dcc284a877ace9220faca345498a.nix;
        revNum = 0;
        sha256 = "3bab96fc454c6557854506cfe54d187a49a6dcc284a877ace9220faca345498a";
      };
      r1 = {
        nix = import ../hackage/linear-code-0.1.0-r1-1bd4a1a76bf7ceba3f4e83af80aae94d9d28b8c4a96680bd36e059ce3ed981d5.nix;
        revNum = 1;
        sha256 = "1bd4a1a76bf7ceba3f4e83af80aae94d9d28b8c4a96680bd36e059ce3ed981d5";
      };
      default = "r1";
    };
  };
  "0.1.1" = {
    sha256 = "2b28302aecc4490808f29aebe757e850e48f8ea579de638668dd2be38d3cdf37";
    revisions = {
      r0 = {
        nix = import ../hackage/linear-code-0.1.1-r0-35d2c4bc7b13386aab79a795ba3376becef3846d76886409a35662d83b73f663.nix;
        revNum = 0;
        sha256 = "35d2c4bc7b13386aab79a795ba3376becef3846d76886409a35662d83b73f663";
      };
      default = "r0";
    };
  };
  "0.2.0" = {
    sha256 = "2785c4be0c1b5ba6438b6faa6299cded2e478c8387d6461553a9a78e6f7da491";
    revisions = {
      r0 = {
        nix = import ../hackage/linear-code-0.2.0-r0-b1e5390b998f7eb80208000bd1af9642169e2345266b4e6369083634eb0f17e4.nix;
        revNum = 0;
        sha256 = "b1e5390b998f7eb80208000bd1af9642169e2345266b4e6369083634eb0f17e4";
      };
      default = "r0";
    };
  };
}