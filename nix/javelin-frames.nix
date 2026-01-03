{
  "0.1.0.0" = {
    sha256 = "fbdfaf412fc76ce6174b66c90739f431852a8ba23218057a881ac527e1d5a083";
    revisions = {
      r0 = {
        nix = import ../hackage/javelin-frames-0.1.0.0-r0-e9caf3841bada1aa0f740c118f64103f1d407eb8931909f1a3c247feab0a6b4f.nix;
        revNum = 0;
        sha256 = "e9caf3841bada1aa0f740c118f64103f1d407eb8931909f1a3c247feab0a6b4f";
      };
      r1 = {
        nix = import ../hackage/javelin-frames-0.1.0.0-r1-8f54860ee5837a6f762811be0584e8315a3c2df084a1b0bf1281557d5f4f5ae9.nix;
        revNum = 1;
        sha256 = "8f54860ee5837a6f762811be0584e8315a3c2df084a1b0bf1281557d5f4f5ae9";
      };
      default = "r1";
    };
  };
  "0.1.0.1" = {
    sha256 = "4f305a6b3a0d8514790229eb7bda368c0c8b86909cb4dbbd9f76712cc56a89bf";
    revisions = {
      r0 = {
        nix = import ../hackage/javelin-frames-0.1.0.1-r0-f886f8168873b6811a14f5c7e129d5128de38165dd81b310289b4c247a93d21b.nix;
        revNum = 0;
        sha256 = "f886f8168873b6811a14f5c7e129d5128de38165dd81b310289b4c247a93d21b";
      };
      default = "r0";
    };
  };
  "0.1.0.2" = {
    sha256 = "7415d1f090f16cc6ef277dcff706c940adda8203108a93a5bf1ed5b270e09b3c";
    revisions = {
      r0 = {
        nix = import ../hackage/javelin-frames-0.1.0.2-r0-f2f1ba1e708016d1c446a4cf536fc4b496263fe95872893bfe80fb9fe0e3da12.nix;
        revNum = 0;
        sha256 = "f2f1ba1e708016d1c446a4cf536fc4b496263fe95872893bfe80fb9fe0e3da12";
      };
      r1 = {
        nix = import ../hackage/javelin-frames-0.1.0.2-r1-c46b7f7d7c5e3774b39ac68843204b79cdae1888c8b3e75a5a4570fe68321ca3.nix;
        revNum = 1;
        sha256 = "c46b7f7d7c5e3774b39ac68843204b79cdae1888c8b3e75a5a4570fe68321ca3";
      };
      default = "r1";
    };
  };
}