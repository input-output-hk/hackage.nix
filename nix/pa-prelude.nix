{
  "0.1.0.0" = {
    sha256 = "554556e3acbf7154131ed05209d803a19d6aa1c7d675fcb10501de50869c49ab";
    revisions = {
      r0 = {
        nix = import ../hackage/pa-prelude-0.1.0.0-r0-f65b0ed8882274d0525360a9c9803b711a26c361fa8a57462974a2c8832bdcbc.nix;
        revNum = 0;
        sha256 = "f65b0ed8882274d0525360a9c9803b711a26c361fa8a57462974a2c8832bdcbc";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "68015f7c19e9c618fc04e2516baccfce52af24efb9ca1480162c9ea0aef7f301";
    revisions = {
      r0 = {
        nix = import ../hackage/pa-prelude-0.2.0.0-r0-b598794d3b2d7ec853be3932ffe86447770f19d2a4232754658ccd3ae0d83891.nix;
        revNum = 0;
        sha256 = "b598794d3b2d7ec853be3932ffe86447770f19d2a4232754658ccd3ae0d83891";
      };
      default = "r0";
    };
  };
}