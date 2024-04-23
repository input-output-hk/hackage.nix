{
  "0.1.0.0" = {
    sha256 = "16954927f7a178fbb673bd66a836fad19072562d0cdac39397b4ba74c8ae2ba1";
    revisions = {
      r0 = {
        nix = import ../hackage/basex-client-0.1.0.0-r0-ffaf7505d4de257ef12bbfbe34274fcc866a45bde2045959e19fa6882615266f.nix;
        revNum = 0;
        sha256 = "ffaf7505d4de257ef12bbfbe34274fcc866a45bde2045959e19fa6882615266f";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "90f165babb781cb9a38107c32bd9c0d2cbee836f2120c7c2bf39b1e1a5ef1d0d";
    revisions = {
      r0 = {
        nix = import ../hackage/basex-client-0.2.0.0-r0-441bb365005474761c9c062b1fd06bdf00a9ffdf8b55d7a1ad76d20f2e5d1b0b.nix;
        revNum = 0;
        sha256 = "441bb365005474761c9c062b1fd06bdf00a9ffdf8b55d7a1ad76d20f2e5d1b0b";
      };
      default = "r0";
    };
  };
}