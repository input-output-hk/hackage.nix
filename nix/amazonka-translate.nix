{
  "1.6.0" = {
    sha256 = "7b6c6a78dbade385ede7442a67aab42700b64a283586c829740bafec3a8d6022";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-translate-1.6.0-r0-17a6d116d8d0aabd3f3216e7f02970f67605e184c694f34c1f3099288d3fc303.nix;
        revNum = 0;
        sha256 = "17a6d116d8d0aabd3f3216e7f02970f67605e184c694f34c1f3099288d3fc303";
      };
      r1 = {
        nix = import ../hackage/amazonka-translate-1.6.0-r1-698117cf38e5b179df17d5ebb1c64e391743db6e3958fd5a38ae6409236beab9.nix;
        revNum = 1;
        sha256 = "698117cf38e5b179df17d5ebb1c64e391743db6e3958fd5a38ae6409236beab9";
      };
      default = "r1";
    };
  };
  "1.6.1" = {
    sha256 = "09c130837d3733a6c29684181c9ea4a1dd5e31a995b9d8bf55227a3f84483327";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-translate-1.6.1-r0-8eed842004252bc6adea7f010d0f552abeaa6d576c5ea4f82795c54ce046e301.nix;
        revNum = 0;
        sha256 = "8eed842004252bc6adea7f010d0f552abeaa6d576c5ea4f82795c54ce046e301";
      };
      r1 = {
        nix = import ../hackage/amazonka-translate-1.6.1-r1-786fd08e7eb4cd5d84c4e09a3b3fd801a198aa53054d321200beb5ef1f1904c3.nix;
        revNum = 1;
        sha256 = "786fd08e7eb4cd5d84c4e09a3b3fd801a198aa53054d321200beb5ef1f1904c3";
      };
      default = "r1";
    };
  };
  "2.0" = {
    sha256 = "86a728fef36a96c7fe31f5d14a67362608eebe53c5cc90ea89ae97611729554c";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-translate-2.0-r0-c046586e831c43ee58e5531d9de013f85987201766974d3aa54844ada2cd8c3b.nix;
        revNum = 0;
        sha256 = "c046586e831c43ee58e5531d9de013f85987201766974d3aa54844ada2cd8c3b";
      };
      r1 = {
        nix = import ../hackage/amazonka-translate-2.0-r1-8b0ddd3d9f130276309c8c9de46ebcfd02156a85dc407f66605de1107a6e22e9.nix;
        revNum = 1;
        sha256 = "8b0ddd3d9f130276309c8c9de46ebcfd02156a85dc407f66605de1107a6e22e9";
      };
      default = "r1";
    };
  };
}