{
  "0.2.0.0" = {
    sha256 = "3f3d46ee31b7ad2328761f6e7225bde5c94e61fa35b078838b8ae44de15598b3";
    revisions = {
      r0 = {
        nix = import ../hackage/uncertain-0.2.0.0-r0-7fc959bbd0dd630c1de99379e150de818396a62257d6564fee92686530968b95.nix;
        revNum = 0;
        sha256 = "7fc959bbd0dd630c1de99379e150de818396a62257d6564fee92686530968b95";
      };
      r1 = {
        nix = import ../hackage/uncertain-0.2.0.0-r1-1057e2e280de08d8a148f7a29028d6d04083adb6bd8b375bf9fed1513e937c86.nix;
        revNum = 1;
        sha256 = "1057e2e280de08d8a148f7a29028d6d04083adb6bd8b375bf9fed1513e937c86";
      };
      default = "r1";
    };
  };
  "0.3.0.0" = {
    sha256 = "91aedeb132b145799cc84fd409e60b1688c023b55adf4bcdf405327b2e1f0f8b";
    revisions = {
      r0 = {
        nix = import ../hackage/uncertain-0.3.0.0-r0-515629eb22612cbd5fa0b314ca747421e64ed5b95277b26589922b1fbf73b56c.nix;
        revNum = 0;
        sha256 = "515629eb22612cbd5fa0b314ca747421e64ed5b95277b26589922b1fbf73b56c";
      };
      default = "r0";
    };
  };
  "0.3.1.0" = {
    sha256 = "6f67855ed4799e0c3465dfaef062b637efc61fbea40ebc44ced163028a996ff2";
    revisions = {
      r0 = {
        nix = import ../hackage/uncertain-0.3.1.0-r0-25752a3ef8e66968ab75dc8ec3c741bcfdb39a46ee2a97de2503fa46e31a478f.nix;
        revNum = 0;
        sha256 = "25752a3ef8e66968ab75dc8ec3c741bcfdb39a46ee2a97de2503fa46e31a478f";
      };
      default = "r0";
    };
  };
  "0.4.0.0" = {
    sha256 = "0c7481e28740954aa64828c6fad141c399e9d6eccdf828b8017574eca532f8ec";
    revisions = {
      r0 = {
        nix = import ../hackage/uncertain-0.4.0.0-r0-e875a97313a129a82e3ef1c003c814b6f79aa27d6af5e84847a714121c80bbfb.nix;
        revNum = 0;
        sha256 = "e875a97313a129a82e3ef1c003c814b6f79aa27d6af5e84847a714121c80bbfb";
      };
      default = "r0";
    };
  };
  "0.4.0.1" = {
    sha256 = "83cbee65ec6c07c89b5f3b201aefefda5f15dfe6a77d0f90acd5936b8ae88799";
    revisions = {
      r0 = {
        nix = import ../hackage/uncertain-0.4.0.1-r0-d066ec8af02473108096e40ea1e7fb76f797a81ce7958fbd9e88ed7ad2fe8275.nix;
        revNum = 0;
        sha256 = "d066ec8af02473108096e40ea1e7fb76f797a81ce7958fbd9e88ed7ad2fe8275";
      };
      default = "r0";
    };
  };
}