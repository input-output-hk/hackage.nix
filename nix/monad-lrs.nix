{
  "0.0.1" = {
    sha256 = "217a32ad42f2be51f16caf6691320eb1b10ea75c80f8fd1dac7f06d5cf5a922b";
    revisions = {
      r0 = {
        nix = import ../hackage/monad-lrs-0.0.1-r0-91f7659162d723ea5f65ccbb18298bca7a511ae182550e03e7ccb99eb8a1f5d3.nix;
        revNum = 0;
        sha256 = "91f7659162d723ea5f65ccbb18298bca7a511ae182550e03e7ccb99eb8a1f5d3";
      };
      default = "r0";
    };
  };
  "0.0.2" = {
    sha256 = "f4a1cd34ca7c99e5e7e175bd7921d1f609e72a8fb147251ecf88cbfc138ac20d";
    revisions = {
      r0 = {
        nix = import ../hackage/monad-lrs-0.0.2-r0-231cd44ff2dca5d5672853f8469824b8f4780fd033f4ae9222130106ba617480.nix;
        revNum = 0;
        sha256 = "231cd44ff2dca5d5672853f8469824b8f4780fd033f4ae9222130106ba617480";
      };
      default = "r0";
    };
  };
  "0.0.2.1" = {
    sha256 = "8f557940e9c17085e282936d687ab8232f93e932896a9547468e8e0cca872806";
    revisions = {
      r0 = {
        nix = import ../hackage/monad-lrs-0.0.2.1-r0-3bde9f05b1a5d2057796a5c2dadb8dcd70b9c90c2ad486392af4f69d7fd0a918.nix;
        revNum = 0;
        sha256 = "3bde9f05b1a5d2057796a5c2dadb8dcd70b9c90c2ad486392af4f69d7fd0a918";
      };
      r1 = {
        nix = import ../hackage/monad-lrs-0.0.2.1-r1-dd714797826911e564a0e418307530fa99a8ba9ea91400517be2bb78b4e695c1.nix;
        revNum = 1;
        sha256 = "dd714797826911e564a0e418307530fa99a8ba9ea91400517be2bb78b4e695c1";
      };
      default = "r1";
    };
  };
}