{
  "3.0" = {
    sha256 = "96139eb717a1d126e4e8046af41044d7e49bf10ead82c406318fe89c1c81d96b";
    revisions = {
      r0 = {
        nix = import ../hackage/singletons-base-3.0-r0-a6fad461d9b500b0df4dbcfca0a0185b5f09fe13c546a57acbcad70a0357f20a.nix;
        revNum = 0;
        sha256 = "a6fad461d9b500b0df4dbcfca0a0185b5f09fe13c546a57acbcad70a0357f20a";
        };
      default = "r0";
      };
    };
  "3.1" = {
    sha256 = "6d9e190431922f53e67e754f48bebf3e260cb201bda43c74b40247ee565b4eaf";
    revisions = {
      r0 = {
        nix = import ../hackage/singletons-base-3.1-r0-c7c83b0da1ad6f02129d900ca8feaf6ae463a73b1935bdc199cfbacf14db31a1.nix;
        revNum = 0;
        sha256 = "c7c83b0da1ad6f02129d900ca8feaf6ae463a73b1935bdc199cfbacf14db31a1";
        };
      r1 = {
        nix = import ../hackage/singletons-base-3.1-r1-3e034351e3dfee6294dc9b991f3f60491f0257482226c7cd974bd899ebefe08a.nix;
        revNum = 1;
        sha256 = "3e034351e3dfee6294dc9b991f3f60491f0257482226c7cd974bd899ebefe08a";
        };
      default = "r1";
      };
    };
  }