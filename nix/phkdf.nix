{
  "0.0.0.0" = {
    sha256 = "81617287a889e7d1405964caafdb9b3cf9f1d7dd11db35a81b5dabfb3667133e";
    revisions = {
      r0 = {
        nix = import ../hackage/phkdf-0.0.0.0-r0-4a5d453a6a29accec4bbd76a567178aaa54ded381faf88f9c9fe960de64c26fc.nix;
        revNum = 0;
        sha256 = "4a5d453a6a29accec4bbd76a567178aaa54ded381faf88f9c9fe960de64c26fc";
      };
      default = "r0";
    };
  };
  "0.1.0.0" = {
    sha256 = "1fcc06a5b204d24a7f62661ddf959e572cddaf1e1d5e0640560a1a93007a0429";
    revisions = {
      r0 = {
        nix = import ../hackage/phkdf-0.1.0.0-r0-e10701c315af5b5001fee96cc354fb820d0ca766fc84de7e27b0090ad550f53e.nix;
        revNum = 0;
        sha256 = "e10701c315af5b5001fee96cc354fb820d0ca766fc84de7e27b0090ad550f53e";
      };
      default = "r0";
    };
  };
}