{
  "0.1.0" = {
    sha256 = "4faa5e31cc2c684144bdae637f68a92734fdcc67d1aefdac58ad51a37a3714e7";
    revisions = {
      r0 = {
        nix = import ../hackage/BCMtools-0.1.0-r0-4651a1a803a774d5e682ecc12180fbb42ef6da08db4766f9deb951e13458dfef.nix;
        revNum = 0;
        sha256 = "4651a1a803a774d5e682ecc12180fbb42ef6da08db4766f9deb951e13458dfef";
        };
      default = "r0";
      };
    };
  "0.1.1" = {
    sha256 = "44fb60ce4916b2d4f766e0b23d6fb4df43bff26a21c40c20a232e40ed19b2399";
    revisions = {
      r0 = {
        nix = import ../hackage/BCMtools-0.1.1-r0-104db2556f2f83336278cef01208b989ea6b06118775f84e1f380b471b1f89b9.nix;
        revNum = 0;
        sha256 = "104db2556f2f83336278cef01208b989ea6b06118775f84e1f380b471b1f89b9";
        };
      r1 = {
        nix = import ../hackage/BCMtools-0.1.1-r1-ae4f4a426eee8ef09f1b96d20f150b11a73e887ab0793d253e3573297d5e9f47.nix;
        revNum = 1;
        sha256 = "ae4f4a426eee8ef09f1b96d20f150b11a73e887ab0793d253e3573297d5e9f47";
        };
      default = "r1";
      };
    };
  }