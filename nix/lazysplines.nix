{
  "0.1" = {
    sha256 = "c1455b3f28beb1a67e0f63014313b042d07cdbfb6304b48b1bd33dac57c9f723";
    revisions = {
      r0 = {
        nix = import ../hackage/lazysplines-0.1-r0-cc75bb93280230b159b6840c22faafb446ba91ddd102505fc726bf010e6667fc.nix;
        revNum = 0;
        sha256 = "cc75bb93280230b159b6840c22faafb446ba91ddd102505fc726bf010e6667fc";
        };
      r1 = {
        nix = import ../hackage/lazysplines-0.1-r1-0ae597019ee61703b703ab3a94b3a312eb87943684db44076bb23cc0c06df14c.nix;
        revNum = 1;
        sha256 = "0ae597019ee61703b703ab3a94b3a312eb87943684db44076bb23cc0c06df14c";
        };
      default = "r1";
      };
    };
  "0.2" = {
    sha256 = "de00c0313670612ff9df5bacaf7196fa5379122e0165b718fa5677e5cd1adf64";
    revisions = {
      r0 = {
        nix = import ../hackage/lazysplines-0.2-r0-8377d6c1c92e92709da0830af34af889a4404c5aa9f3948252ded5452bb93083.nix;
        revNum = 0;
        sha256 = "8377d6c1c92e92709da0830af34af889a4404c5aa9f3948252ded5452bb93083";
        };
      r1 = {
        nix = import ../hackage/lazysplines-0.2-r1-43601ff6932de61c4c5c3bca18e1d27b06aeadfe1afcd3da3758a82f5109011d.nix;
        revNum = 1;
        sha256 = "43601ff6932de61c4c5c3bca18e1d27b06aeadfe1afcd3da3758a82f5109011d";
        };
      default = "r1";
      };
    };
  "0.3" = {
    sha256 = "3d824432fe016fac1d312dac2fafe9aa69eed3263f7add0a5e625ff00837948e";
    revisions = {
      r0 = {
        nix = import ../hackage/lazysplines-0.3-r0-31b349ee31ab0ee6c46eb497030a084309f37f34237bd938f7a023643c34bc0d.nix;
        revNum = 0;
        sha256 = "31b349ee31ab0ee6c46eb497030a084309f37f34237bd938f7a023643c34bc0d";
        };
      default = "r0";
      };
    };
  }