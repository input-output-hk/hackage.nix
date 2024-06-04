{
  "0.1.0.0" = {
    sha256 = "e6f77cb227ae7ae4df21e15db6af1ee2b915dd3dbcbd1480db55d635ec0edddd";
    revisions = {
      r0 = {
        nix = import ../hackage/language-gemini-0.1.0.0-r0-d05ba03c3bd80fbc6ef0d5f82959a170a805b39672ca8aabd7bc73971312797e.nix;
        revNum = 0;
        sha256 = "d05ba03c3bd80fbc6ef0d5f82959a170a805b39672ca8aabd7bc73971312797e";
      };
      r1 = {
        nix = import ../hackage/language-gemini-0.1.0.0-r1-ec873f81b6efb0dc4a529e40dcaaf7a7364b9481ec86cee896ba165844a6743e.nix;
        revNum = 1;
        sha256 = "ec873f81b6efb0dc4a529e40dcaaf7a7364b9481ec86cee896ba165844a6743e";
      };
      r2 = {
        nix = import ../hackage/language-gemini-0.1.0.0-r2-25a11ca50e8fba9e644bb0a8a87f078da9ce788041c82f15bf210a58c9f112ae.nix;
        revNum = 2;
        sha256 = "25a11ca50e8fba9e644bb0a8a87f078da9ce788041c82f15bf210a58c9f112ae";
      };
      default = "r2";
    };
  };
  "0.1.0.1" = {
    sha256 = "092e7cd255f3efb61d6bf1946fd2207df9675ab12a85fe9dfb8a83460112d4ee";
    revisions = {
      r0 = {
        nix = import ../hackage/language-gemini-0.1.0.1-r0-694c92ed8d5f9b994ff41c8e3a2461469109a8169727dcbb1f0bb591b0ab104a.nix;
        revNum = 0;
        sha256 = "694c92ed8d5f9b994ff41c8e3a2461469109a8169727dcbb1f0bb591b0ab104a";
      };
      r1 = {
        nix = import ../hackage/language-gemini-0.1.0.1-r1-4ea081faccea09f043b645f8fd2bc29c4150b9f64829288f6faf294b7c816a28.nix;
        revNum = 1;
        sha256 = "4ea081faccea09f043b645f8fd2bc29c4150b9f64829288f6faf294b7c816a28";
      };
      r2 = {
        nix = import ../hackage/language-gemini-0.1.0.1-r2-11ab1da00a1b7ee6e70b3373fe8be83c93a46734daa14c9482b47ac3474c317c.nix;
        revNum = 2;
        sha256 = "11ab1da00a1b7ee6e70b3373fe8be83c93a46734daa14c9482b47ac3474c317c";
      };
      default = "r2";
    };
  };
}