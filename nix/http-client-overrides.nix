{
  "0.1.0.0" = {
    sha256 = "2fa12ec28982865b1bf0e30ed0819943f6075d46130ee2db772a7dc2175dd8e8";
    revisions = {
      r0 = {
        nix = import ../hackage/http-client-overrides-0.1.0.0-r0-4986fb5a6764a844262c8b92fa365faeb916d22041468551aa2474b589fe4101.nix;
        revNum = 0;
        sha256 = "4986fb5a6764a844262c8b92fa365faeb916d22041468551aa2474b589fe4101";
      };
      default = "r0";
    };
  };
  "0.1.1.0" = {
    sha256 = "944dc0c10c8e223ae93fbdc5b65129a7ebd1031cbe125397acf8643dbba15a95";
    revisions = {
      r0 = {
        nix = import ../hackage/http-client-overrides-0.1.1.0-r0-de2e92a10c39af2fcc598e6d90cbf6136b7fc2b2819fe2d63cf664c36d0ee868.nix;
        revNum = 0;
        sha256 = "de2e92a10c39af2fcc598e6d90cbf6136b7fc2b2819fe2d63cf664c36d0ee868";
      };
      default = "r0";
    };
  };
}