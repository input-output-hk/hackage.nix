{
  "1.0.0.0" = {
    sha256 = "356678ab2a4f111fd0fcbc1bfe2f50691f8167d5371bbf66b17f4997f57b91c3";
    revisions = {
      r0 = {
        nix = import ../hackage/futhark-manifest-1.0.0.0-r0-04e6d261d7ca3de38b9a7cc7c98a3d35d6385db015fc9de5f6cd1d609df680b1.nix;
        revNum = 0;
        sha256 = "04e6d261d7ca3de38b9a7cc7c98a3d35d6385db015fc9de5f6cd1d609df680b1";
        };
      r1 = {
        nix = import ../hackage/futhark-manifest-1.0.0.0-r1-d38398022482d4411fcef39b98dc56ae938fc1d1171cbc7bfc79399814f45f25.nix;
        revNum = 1;
        sha256 = "d38398022482d4411fcef39b98dc56ae938fc1d1171cbc7bfc79399814f45f25";
        };
      default = "r1";
      };
    };
  "1.0.0.1" = {
    sha256 = "85db64b4bd8123d9c037a1e7fcbf320708320fcdb852ad63a2dc27754062a67e";
    revisions = {
      r0 = {
        nix = import ../hackage/futhark-manifest-1.0.0.1-r0-84daf0f369ce32b136fc0c31029fda9e2c528fbe991e7db91275ed0cafc3feee.nix;
        revNum = 0;
        sha256 = "84daf0f369ce32b136fc0c31029fda9e2c528fbe991e7db91275ed0cafc3feee";
        };
      default = "r0";
      };
    };
  "1.1.0.0" = {
    sha256 = "f676f515ab0d9ab5805f04a6e05d20d5641ba93fd6c4fd233aa79a9fcd1a2ef8";
    revisions = {
      r0 = {
        nix = import ../hackage/futhark-manifest-1.1.0.0-r0-37c11627c4ca1e588bf9986e4a9124261640a15b18ddc65ea2aee1464267407d.nix;
        revNum = 0;
        sha256 = "37c11627c4ca1e588bf9986e4a9124261640a15b18ddc65ea2aee1464267407d";
        };
      default = "r0";
      };
    };
  }