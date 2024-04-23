{
  "0.0.1" = {
    sha256 = "21d027aa089809e7412574c3494483001e18252c439119386491c8cd3b2c9ca2";
    revisions = {
      r0 = {
        nix = import ../hackage/haskoin-script-0.0.1-r0-f8efb43ab76a639d9f3ecab380ea9df15aa0879dc95f77aafd7707df671f8dac.nix;
        revNum = 0;
        sha256 = "f8efb43ab76a639d9f3ecab380ea9df15aa0879dc95f77aafd7707df671f8dac";
      };
      r1 = {
        nix = import ../hackage/haskoin-script-0.0.1-r1-24b9bdd80bc20e9e823b20a7a5e21095ede00c09af17fd1b7b2e561939e06890.nix;
        revNum = 1;
        sha256 = "24b9bdd80bc20e9e823b20a7a5e21095ede00c09af17fd1b7b2e561939e06890";
      };
      default = "r1";
    };
  };
}