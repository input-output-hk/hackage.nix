{
  "0.1" = {
    sha256 = "480896c94f7b63cf1f54aea494debc46b888d7e48480b12a5d09045e0a77fbec";
    revisions = {
      r0 = {
        nix = import ../hackage/complex-integrate-0.1-r0-256226f824ecd15c488719c7972bba1d5c34aa91f2ef335c92db0370a04df2ed.nix;
        revNum = 0;
        sha256 = "256226f824ecd15c488719c7972bba1d5c34aa91f2ef335c92db0370a04df2ed";
      };
      default = "r0";
    };
  };
  "1.0.0" = {
    sha256 = "d23130086dffc463153a2fa7e0fa79edd871d6eb4edcd30e64c2911cf1750e60";
    revisions = {
      r0 = {
        nix = import ../hackage/complex-integrate-1.0.0-r0-9fb6fe064ec025238edfb6ec11c46a90620ee678637110647c2d6b4934fc0b26.nix;
        revNum = 0;
        sha256 = "9fb6fe064ec025238edfb6ec11c46a90620ee678637110647c2d6b4934fc0b26";
      };
      default = "r0";
    };
  };
}