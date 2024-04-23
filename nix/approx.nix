{
  "0.1.0.0" = {
    sha256 = "c24ac81be73fe19228892b4a6eee6eb35e59a0d765e5bbdd2b65e44f389886ed";
    revisions = {
      r0 = {
        nix = import ../hackage/approx-0.1.0.0-r0-69cd865b627290266c5dea8899849360e90f7b44cf0390c4497294cc6a7c54a1.nix;
        revNum = 0;
        sha256 = "69cd865b627290266c5dea8899849360e90f7b44cf0390c4497294cc6a7c54a1";
      };
      r1 = {
        nix = import ../hackage/approx-0.1.0.0-r1-010376f7128fd8cc2a1838250804f6df9f8ded2e70d7ffcf5e9cdcafb45c644c.nix;
        revNum = 1;
        sha256 = "010376f7128fd8cc2a1838250804f6df9f8ded2e70d7ffcf5e9cdcafb45c644c";
      };
      default = "r1";
    };
  };
  "0.1.0.1" = {
    sha256 = "29f1301964a139ea91241a37e0993adac6bc9d086427b7a888f2387aa202f16f";
    revisions = {
      r0 = {
        nix = import ../hackage/approx-0.1.0.1-r0-9a149f96173e8d5692ae1db35f9195e329b8da987ff97d75923658589f0b7844.nix;
        revNum = 0;
        sha256 = "9a149f96173e8d5692ae1db35f9195e329b8da987ff97d75923658589f0b7844";
      };
      r1 = {
        nix = import ../hackage/approx-0.1.0.1-r1-fe0c176d0b07d8d282732d66a92517a5552a3b755b8d41cd2aef3bb41dc6494e.nix;
        revNum = 1;
        sha256 = "fe0c176d0b07d8d282732d66a92517a5552a3b755b8d41cd2aef3bb41dc6494e";
      };
      default = "r1";
    };
  };
}