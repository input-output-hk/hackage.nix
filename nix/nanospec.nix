{
  "0.1.0" = {
    sha256 = "604aab074552e580a52bcfda8fce7cb2a48316f4f903801ea5d9a29b52b0179b";
    revisions = {
      r0 = {
        nix = import ../hackage/nanospec-0.1.0-r0-90c68deb8717ebec793840dfe443b543535d6705bbb1f7b93fa2c7fdd1d19b76.nix;
        revNum = 0;
        sha256 = "90c68deb8717ebec793840dfe443b543535d6705bbb1f7b93fa2c7fdd1d19b76";
      };
      r1 = {
        nix = import ../hackage/nanospec-0.1.0-r1-44ed699ce0cf12326e9457daa60d732732e97438d6b8d437fd09cf1aac60b939.nix;
        revNum = 1;
        sha256 = "44ed699ce0cf12326e9457daa60d732732e97438d6b8d437fd09cf1aac60b939";
      };
      default = "r1";
    };
  };
  "0.2.0" = {
    sha256 = "1b0bae00eb01e9f4b04c167ebe0c7a27025429ce7709db3f2a798ccd0ca2203c";
    revisions = {
      r0 = {
        nix = import ../hackage/nanospec-0.2.0-r0-20a0cc188604816f392e3e0c56069eb19baad080e059f0de76e47c0b338cefca.nix;
        revNum = 0;
        sha256 = "20a0cc188604816f392e3e0c56069eb19baad080e059f0de76e47c0b338cefca";
      };
      default = "r0";
    };
  };
  "0.2.1" = {
    sha256 = "dbcbd9baa57fc9aa573cc2e291bb93c787dc0d7aac9793b2a10c125f69a0024b";
    revisions = {
      r0 = {
        nix = import ../hackage/nanospec-0.2.1-r0-17f10f7ee4ee9ee9dfc9b6b774eb0ad117373c8454d84260d4167eb4d9c4fd40.nix;
        revNum = 0;
        sha256 = "17f10f7ee4ee9ee9dfc9b6b774eb0ad117373c8454d84260d4167eb4d9c4fd40";
      };
      default = "r0";
    };
  };
  "0.2.2" = {
    sha256 = "cf14ccc2b296c910000cdc3eb51b37389b3eb94139384b9555db79b8128595e5";
    revisions = {
      r0 = {
        nix = import ../hackage/nanospec-0.2.2-r0-a3311128515b687817baa485d1f50c6d6444c76620a8ac91919de142de69bf49.nix;
        revNum = 0;
        sha256 = "a3311128515b687817baa485d1f50c6d6444c76620a8ac91919de142de69bf49";
      };
      default = "r0";
    };
  };
}