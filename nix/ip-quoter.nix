{
  "1.0.0.0" = {
    sha256 = "cfc159417f1c9238566e058ea790ba14f3a7c9ef7357719db6dc266adc00b1c5";
    revisions = {
      r0 = {
        nix = import ../hackage/ip-quoter-1.0.0.0-r0-dc9c9608a846931ce91bf7a9f0f38230431d9807ee7aea333a76fa47d9ec29d6.nix;
        revNum = 0;
        sha256 = "dc9c9608a846931ce91bf7a9f0f38230431d9807ee7aea333a76fa47d9ec29d6";
      };
      r1 = {
        nix = import ../hackage/ip-quoter-1.0.0.0-r1-5cd6b449c4acd24b27d27a839acdab85f65b5556dd7bc8be115b7e2f6dc5df11.nix;
        revNum = 1;
        sha256 = "5cd6b449c4acd24b27d27a839acdab85f65b5556dd7bc8be115b7e2f6dc5df11";
      };
      default = "r1";
    };
  };
  "1.0.1.0" = {
    sha256 = "5ca4f7458fcae93dbfd68c554c6a44700010fbfcf9a83d51e0e69b42b9d5226a";
    revisions = {
      r0 = {
        nix = import ../hackage/ip-quoter-1.0.1.0-r0-f3ebdf406946c163ad8a808c73af34644ab5fc4789ec93055fc1541b541dc1d5.nix;
        revNum = 0;
        sha256 = "f3ebdf406946c163ad8a808c73af34644ab5fc4789ec93055fc1541b541dc1d5";
      };
      default = "r0";
    };
  };
  "1.0.1.1" = {
    sha256 = "94c4369d0a83ed5f8a0bb8057d297935f19e7a51a568f4c5348936e9053929a0";
    revisions = {
      r0 = {
        nix = import ../hackage/ip-quoter-1.0.1.1-r0-d5d60460be69cca5556f6691f8ef51e5a02dbce12eacea789886f8461a9383e3.nix;
        revNum = 0;
        sha256 = "d5d60460be69cca5556f6691f8ef51e5a02dbce12eacea789886f8461a9383e3";
      };
      default = "r0";
    };
  };
}