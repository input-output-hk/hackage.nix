{
  "0.1.0.0" = {
    sha256 = "44a59c46a6f998592fe303410cf6314f1da3620074e16fccb4c6be7d09301c43";
    revisions = {
      r0 = {
        nix = import ../hackage/interruptible-0.1.0.0-r0-7534dd26092c50c9ffe632392586463425b07d8fd522481d6ab7de7fbd3861ad.nix;
        revNum = 0;
        sha256 = "7534dd26092c50c9ffe632392586463425b07d8fd522481d6ab7de7fbd3861ad";
        };
      r1 = {
        nix = import ../hackage/interruptible-0.1.0.0-r1-51908ce437eee32ad6e6e0fec56476e7195359c5a8a60320408ebb0dc23895ee.nix;
        revNum = 1;
        sha256 = "51908ce437eee32ad6e6e0fec56476e7195359c5a8a60320408ebb0dc23895ee";
        };
      default = "r1";
      };
    };
  "0.1.1.0" = {
    sha256 = "68fbb16e5044eca8c5cd1f6a365e60ce11f8f3621dadf47f7be3a6b843c34264";
    revisions = {
      r0 = {
        nix = import ../hackage/interruptible-0.1.1.0-r0-43d0ca91f83378c2688dc5e61bf12839a168b34547ed781b41acfd31eb1fcc0d.nix;
        revNum = 0;
        sha256 = "43d0ca91f83378c2688dc5e61bf12839a168b34547ed781b41acfd31eb1fcc0d";
        };
      default = "r0";
      };
    };
  "0.1.1.1" = {
    sha256 = "d3ef92f178d03041edc7845dd3c3ac90a3e5c6b74b5ca1bca65246ac90af1e5c";
    revisions = {
      r0 = {
        nix = import ../hackage/interruptible-0.1.1.1-r0-59779c5e514b8c93af6e65a3b0f06844b3a766fdf6c8946f73a6779401134b7d.nix;
        revNum = 0;
        sha256 = "59779c5e514b8c93af6e65a3b0f06844b3a766fdf6c8946f73a6779401134b7d";
        };
      r1 = {
        nix = import ../hackage/interruptible-0.1.1.1-r1-4ccd041b348c855e2bb7dee1ed51b23097e5e348e9705b1dea24d7d5875de33e.nix;
        revNum = 1;
        sha256 = "4ccd041b348c855e2bb7dee1ed51b23097e5e348e9705b1dea24d7d5875de33e";
        };
      r2 = {
        nix = import ../hackage/interruptible-0.1.1.1-r2-995d15d4358b5c31e289ac2840132c938c2635ae359e3624af7157e71667ce80.nix;
        revNum = 2;
        sha256 = "995d15d4358b5c31e289ac2840132c938c2635ae359e3624af7157e71667ce80";
        };
      default = "r2";
      };
    };
  }