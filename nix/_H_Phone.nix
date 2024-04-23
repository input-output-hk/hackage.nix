{
  "0.0.1.0" = {
    sha256 = "f51d114079399d2b4e5cb33ee23e384657629b85359a27b4e1caf8bef1c96afc";
    revisions = {
      r0 = {
        nix = import ../hackage/HPhone-0.0.1.0-r0-985588e0b2a400b65af107139ff8234cfb33e025e638912eb846e565400038ff.nix;
        revNum = 0;
        sha256 = "985588e0b2a400b65af107139ff8234cfb33e025e638912eb846e565400038ff";
      };
      default = "r0";
    };
  };
  "0.0.1.1" = {
    sha256 = "767d2b44e957a09683f106e78f6f559f43f98dd88bc2053c71efd5f9bba0b927";
    revisions = {
      r0 = {
        nix = import ../hackage/HPhone-0.0.1.1-r0-d11079e4be2f559145989fa393758a9dc0eb5d8e00f46c51b99ce5028816a48f.nix;
        revNum = 0;
        sha256 = "d11079e4be2f559145989fa393758a9dc0eb5d8e00f46c51b99ce5028816a48f";
      };
      r1 = {
        nix = import ../hackage/HPhone-0.0.1.1-r1-7a1f8fcd862807860fe7369674d2e0a44dc8eb6850e756f17024a92da185470c.nix;
        revNum = 1;
        sha256 = "7a1f8fcd862807860fe7369674d2e0a44dc8eb6850e756f17024a92da185470c";
      };
      default = "r1";
    };
  };
  "0.0.1.2" = {
    sha256 = "b59b05042042e7bc440077494faf79684a47b963f023da18c9003d95a2880f39";
    revisions = {
      r0 = {
        nix = import ../hackage/HPhone-0.0.1.2-r0-e2ffccb76dcceb691246e4db1420d0735369788305a3a40f90a20e94d6106ea9.nix;
        revNum = 0;
        sha256 = "e2ffccb76dcceb691246e4db1420d0735369788305a3a40f90a20e94d6106ea9";
      };
      default = "r0";
    };
  };
}