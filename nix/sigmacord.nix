{
  "1.0.0" = {
    sha256 = "9025ba51805cc29f0e4461673fd0eaca74f53ff5f4312647b723757d5619db78";
    revisions = {
      r0 = {
        nix = import ../hackage/sigmacord-1.0.0-r0-47279dd75e4a18074f8785e99ddd40da420c34f62d9ad980ccfd130d910230af.nix;
        revNum = 0;
        sha256 = "47279dd75e4a18074f8785e99ddd40da420c34f62d9ad980ccfd130d910230af";
      };
      r1 = {
        nix = import ../hackage/sigmacord-1.0.0-r1-e07da2da2914a55b2338ade558531d51124bbb02758382fef6c9aa93fdc3c800.nix;
        revNum = 1;
        sha256 = "e07da2da2914a55b2338ade558531d51124bbb02758382fef6c9aa93fdc3c800";
      };
      r2 = {
        nix = import ../hackage/sigmacord-1.0.0-r2-c3048c17e0186890cc0ccc8ca0952457bb89ac088038e9dc746510e3f2d3c46b.nix;
        revNum = 2;
        sha256 = "c3048c17e0186890cc0ccc8ca0952457bb89ac088038e9dc746510e3f2d3c46b";
      };
      default = "r2";
    };
  };
}