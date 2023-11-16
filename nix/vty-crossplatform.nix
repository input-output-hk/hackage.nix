{
  "0.1.0.0" = {
    sha256 = "3c0533fdf9ad65164bb7018dd5e6c9fe1f47be8396bd445bb75a6c6808f999f7";
    revisions = {
      r0 = {
        nix = import ../hackage/vty-crossplatform-0.1.0.0-r0-967ec8981c995e80b6bf1333d6871eddc590b2d59dab5b09100dcf764df06689.nix;
        revNum = 0;
        sha256 = "967ec8981c995e80b6bf1333d6871eddc590b2d59dab5b09100dcf764df06689";
        };
      r1 = {
        nix = import ../hackage/vty-crossplatform-0.1.0.0-r1-e07531db732ee44a40e8ef3a2fd3b3db6d2615a9f8f83b87de574e204f19be7c.nix;
        revNum = 1;
        sha256 = "e07531db732ee44a40e8ef3a2fd3b3db6d2615a9f8f83b87de574e204f19be7c";
        };
      default = "r1";
      };
    };
  "0.2.0.0" = {
    sha256 = "34a82a999f46f35daa78cf1d88f98e7c71565193e5b70531f3a63f721b303113";
    revisions = {
      r0 = {
        nix = import ../hackage/vty-crossplatform-0.2.0.0-r0-6dc6b72ba2fe63f0af582a501ab133a69f49fb75fef3ad7a870412472be077ec.nix;
        revNum = 0;
        sha256 = "6dc6b72ba2fe63f0af582a501ab133a69f49fb75fef3ad7a870412472be077ec";
        };
      r1 = {
        nix = import ../hackage/vty-crossplatform-0.2.0.0-r1-13ac40700079e758b3c6119b1f235a576fe55daee307616db3d94acb986e574f.nix;
        revNum = 1;
        sha256 = "13ac40700079e758b3c6119b1f235a576fe55daee307616db3d94acb986e574f";
        };
      default = "r1";
      };
    };
  "0.3.0.0" = {
    sha256 = "a7d9b36b8470100f35b5f2642a336b7e1df26a916d1ab1b80344cffe646e4bfa";
    revisions = {
      r0 = {
        nix = import ../hackage/vty-crossplatform-0.3.0.0-r0-65e4e8f3fc3fb8449c96bc5dd9172829e54e62f5af58cbd5d91c0e2e1b69e6ce.nix;
        revNum = 0;
        sha256 = "65e4e8f3fc3fb8449c96bc5dd9172829e54e62f5af58cbd5d91c0e2e1b69e6ce";
        };
      default = "r0";
      };
    };
  }