{
  "0.0.0.0" = {
    sha256 = "c61c299759de4d80bebe528ac77ebef306a857c7a90c01daaaf6a77f55edf8c8";
    revisions = {
      r0 = {
        nix = import ../hackage/rustls-0.0.0.0-r0-7f68d3a4e6bff6c7e428c4ef52c2f8e3fae6aecd529d73ba49fc1c04d2480d10.nix;
        revNum = 0;
        sha256 = "7f68d3a4e6bff6c7e428c4ef52c2f8e3fae6aecd529d73ba49fc1c04d2480d10";
      };
      r1 = {
        nix = import ../hackage/rustls-0.0.0.0-r1-82597b89ad79241d858965c6fc179504e38b07728800e34595b847bf340050a2.nix;
        revNum = 1;
        sha256 = "82597b89ad79241d858965c6fc179504e38b07728800e34595b847bf340050a2";
      };
      default = "r1";
    };
  };
  "0.0.1.0" = {
    sha256 = "45da4d958de0c495e3ee1b4056b7ada0c4c42bd3fc5fa8c67a3a0b6d3cd7a537";
    revisions = {
      r0 = {
        nix = import ../hackage/rustls-0.0.1.0-r0-089a50759c67cac19a4f9cc4ecd6221f25f434ed9e813c5d9b2f97043d90acfb.nix;
        revNum = 0;
        sha256 = "089a50759c67cac19a4f9cc4ecd6221f25f434ed9e813c5d9b2f97043d90acfb";
      };
      default = "r0";
    };
  };
  "0.1.0.0" = {
    sha256 = "2be24d22995b7479c496d4d37aeb8c116ad872b738fc0201a1b60e06182bfba5";
    revisions = {
      r0 = {
        nix = import ../hackage/rustls-0.1.0.0-r0-3f7d7358c263c70fdf11c681a61e8ab20272dcc45f13b69ce86250cbb9764337.nix;
        revNum = 0;
        sha256 = "3f7d7358c263c70fdf11c681a61e8ab20272dcc45f13b69ce86250cbb9764337";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "0faf2035efd03fdcfab985697e82b064ec81ab063062751973df56074fb88fe9";
    revisions = {
      r0 = {
        nix = import ../hackage/rustls-0.2.0.0-r0-4a93cf1d521a51b04e9edbc723b74c64936f5d251bef9c2bdf5e975d299e8e44.nix;
        revNum = 0;
        sha256 = "4a93cf1d521a51b04e9edbc723b74c64936f5d251bef9c2bdf5e975d299e8e44";
      };
      default = "r0";
    };
  };
  "0.2.1.0" = {
    sha256 = "fc7cd999199e906f7c77c78d8ba9dd827b2393d53c39511581c330730b46280f";
    revisions = {
      r0 = {
        nix = import ../hackage/rustls-0.2.1.0-r0-a9c8556146c4755613b20f05bcbbd7a1c67cb0bcf7dae593dfce1af62141c76d.nix;
        revNum = 0;
        sha256 = "a9c8556146c4755613b20f05bcbbd7a1c67cb0bcf7dae593dfce1af62141c76d";
      };
      default = "r0";
    };
  };
}