{
  "0.1.0.0" = {
    sha256 = "09ba8abe79f385028ca79759d2a7dd5f96d6b8cab22dc0ced19cfad2ac72c655";
    revisions = {
      r0 = {
        nix = import ../hackage/funbot-client-0.1.0.0-r0-70879bc51243d6c9f23cdb11979c4955fcdbe534484346499b36632dde328904.nix;
        revNum = 0;
        sha256 = "70879bc51243d6c9f23cdb11979c4955fcdbe534484346499b36632dde328904";
      };
      r1 = {
        nix = import ../hackage/funbot-client-0.1.0.0-r1-50e45c194146f68094bd74ad59edf12bee2a19061a1bbb546159583fd0c15ec0.nix;
        revNum = 1;
        sha256 = "50e45c194146f68094bd74ad59edf12bee2a19061a1bbb546159583fd0c15ec0";
      };
      default = "r1";
    };
  };
  "0.1.0.1" = {
    sha256 = "22072804b49929a100e92a067c7e79f6d30b506cbb3f3bb487db02501b33afba";
    revisions = {
      r0 = {
        nix = import ../hackage/funbot-client-0.1.0.1-r0-b8fa94a86f502eb5e8607290fac6c34861a36c0d91cb1dbfe30b33732cef9f5c.nix;
        revNum = 0;
        sha256 = "b8fa94a86f502eb5e8607290fac6c34861a36c0d91cb1dbfe30b33732cef9f5c";
      };
      r1 = {
        nix = import ../hackage/funbot-client-0.1.0.1-r1-449437e7cb240595b590cc3d34b0f08471870961bbf9faf9b4344646223c402b.nix;
        revNum = 1;
        sha256 = "449437e7cb240595b590cc3d34b0f08471870961bbf9faf9b4344646223c402b";
      };
      default = "r1";
    };
  };
}