{
  "0.2.0" = {
    sha256 = "34dcf04c0eb774ea7314dd527f1fdc21a27b3944936f5fe36d1c61fa33b73148";
    revisions = {
      r0 = {
        nix = import ../hackage/ldap-client-og-0.2.0-r0-12d18b0be8de227684610a66cad518470a905ab03adde3e2dcae182cd910d10c.nix;
        revNum = 0;
        sha256 = "12d18b0be8de227684610a66cad518470a905ab03adde3e2dcae182cd910d10c";
      };
      default = "r0";
    };
  };
  "0.3.0" = {
    sha256 = "3165e23d1a5214d1a9e7db5d03f8b6ece3ce45e3f8c0c40cebe0d22209d1396a";
    revisions = {
      r0 = {
        nix = import ../hackage/ldap-client-og-0.3.0-r0-dc21fb0f14b6916fa0db0753b706dcbd144b8ec480e1a28efb89ec50fe0ae9f2.nix;
        revNum = 0;
        sha256 = "dc21fb0f14b6916fa0db0753b706dcbd144b8ec480e1a28efb89ec50fe0ae9f2";
      };
      default = "r0";
    };
  };
}