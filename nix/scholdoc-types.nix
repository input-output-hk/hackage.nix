{
  "0.1.3" = {
    sha256 = "f35ecf24974d86a112db9e031d153093ee086a0b83a53d3363935e7842299a2a";
    revisions = {
      r0 = {
        nix = import ../hackage/scholdoc-types-0.1.3-r0-dea0f52607d532ba0009bd1932f6c655a56615f68355162bad5e41936d114442.nix;
        revNum = 0;
        sha256 = "dea0f52607d532ba0009bd1932f6c655a56615f68355162bad5e41936d114442";
        };
      r1 = {
        nix = import ../hackage/scholdoc-types-0.1.3-r1-18fb578a18988a8361d57025dac5b25c083b4cf044e75ff0a982bd3399bd368d.nix;
        revNum = 1;
        sha256 = "18fb578a18988a8361d57025dac5b25c083b4cf044e75ff0a982bd3399bd368d";
        };
      default = "r1";
      };
    };
  "0.1.3.1" = {
    sha256 = "59ad496dc91ddca4e0eddf2be0c146e7ac8190a84df318bfecf570a3742c6308";
    revisions = {
      r0 = {
        nix = import ../hackage/scholdoc-types-0.1.3.1-r0-c911b4baba3ae0b7e72e02c693bb36ffce05e2a4458da63127d8ad45eb067f4d.nix;
        revNum = 0;
        sha256 = "c911b4baba3ae0b7e72e02c693bb36ffce05e2a4458da63127d8ad45eb067f4d";
        };
      default = "r0";
      };
    };
  }