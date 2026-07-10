{
  "0.13.0" = {
    sha256 = "62b682420b317d2e0e9f8acf61c2d96d493385c8c46daa517f7eb0ec9a95d58b";
    revisions = {
      r0 = {
        nix = import ../hackage/secretspec-0.13.0-r0-d5de1addd73d36494436e2324283964fd866a449d00ccc1dfdd20c6ec193a565.nix;
        revNum = 0;
        sha256 = "d5de1addd73d36494436e2324283964fd866a449d00ccc1dfdd20c6ec193a565";
      };
      default = "r0";
    };
  };
  "0.14.0" = {
    sha256 = "3794c48be8f934a50d4feb93b52b0e9a829ad38dc862afa3ea57ab6fe6083681";
    revisions = {
      r0 = {
        nix = import ../hackage/secretspec-0.14.0-r0-fdb04403dbf06ca5e7860e7a51a29b793dc69a076089875301af3e5fa3690c48.nix;
        revNum = 0;
        sha256 = "fdb04403dbf06ca5e7860e7a51a29b793dc69a076089875301af3e5fa3690c48";
      };
      default = "r0";
    };
  };
}