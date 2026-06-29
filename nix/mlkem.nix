{
  "0.1.0.0" = {
    sha256 = "c338159daa6ca11877036ea959f3c75053834e9d87ce8eb273373a552286773f";
    revisions = {
      r0 = {
        nix = import ../hackage/mlkem-0.1.0.0-r0-38516edd960bd59e2e5732e2183a0bc0c5c0f9ff092282facde3432fe31cdee7.nix;
        revNum = 0;
        sha256 = "38516edd960bd59e2e5732e2183a0bc0c5c0f9ff092282facde3432fe31cdee7";
      };
      r1 = {
        nix = import ../hackage/mlkem-0.1.0.0-r1-0d06ce2360d91bcf6c3bacf29b7505fcf44e0b7c257dccf4767f3f76366b779c.nix;
        revNum = 1;
        sha256 = "0d06ce2360d91bcf6c3bacf29b7505fcf44e0b7c257dccf4767f3f76366b779c";
      };
      default = "r1";
    };
  };
  "0.1.1.0" = {
    sha256 = "34dbf3b5e5d98cdc9cd63aeebabd41299e8f11381f9930223be9e0a83d6ee7d0";
    revisions = {
      r0 = {
        nix = import ../hackage/mlkem-0.1.1.0-r0-a6ea0fe51850cd164f9e918f74ed7e41de4cd69be4c25e7e97b88b45f4e5e0c3.nix;
        revNum = 0;
        sha256 = "a6ea0fe51850cd164f9e918f74ed7e41de4cd69be4c25e7e97b88b45f4e5e0c3";
      };
      r1 = {
        nix = import ../hackage/mlkem-0.1.1.0-r1-6d6f0bf48266479a95229f40ec5275b38096fc880ee331cb1162b1f01ef9dfa2.nix;
        revNum = 1;
        sha256 = "6d6f0bf48266479a95229f40ec5275b38096fc880ee331cb1162b1f01ef9dfa2";
      };
      default = "r1";
    };
  };
  "0.2.0.0" = {
    sha256 = "df90213d0e44c36ab892e2920cbe9042564cfc18be0088259e44b3487905d867";
    revisions = {
      r0 = {
        nix = import ../hackage/mlkem-0.2.0.0-r0-c51d0779dc69ff375420444ffa2f0ce9229bd8e967eb4b17216c0fa85a53984f.nix;
        revNum = 0;
        sha256 = "c51d0779dc69ff375420444ffa2f0ce9229bd8e967eb4b17216c0fa85a53984f";
      };
      default = "r0";
    };
  };
  "0.2.1.0" = {
    sha256 = "6da2bc59835f0ddab892ede68ee1fd9d8230efd959462078c174866330068957";
    revisions = {
      r0 = {
        nix = import ../hackage/mlkem-0.2.1.0-r0-d8f7017fcc3fb59eaa7614e10b03b11cff20f744ec5efcec0079581f917ef11f.nix;
        revNum = 0;
        sha256 = "d8f7017fcc3fb59eaa7614e10b03b11cff20f744ec5efcec0079581f917ef11f";
      };
      default = "r0";
    };
  };
  "0.2.2.0" = {
    sha256 = "cd5d07da59360f62ff4e656a46fbdaa58124926bc98a480e6cd58d802492ae81";
    revisions = {
      r0 = {
        nix = import ../hackage/mlkem-0.2.2.0-r0-c16cb61190e915593767e716dd08957607f6045a01d7c3a1313fbd74eb31c75d.nix;
        revNum = 0;
        sha256 = "c16cb61190e915593767e716dd08957607f6045a01d7c3a1313fbd74eb31c75d";
      };
      default = "r0";
    };
  };
}