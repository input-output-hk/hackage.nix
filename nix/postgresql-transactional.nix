{
  "1.0.0" = {
    sha256 = "5d4468f6142628432a6f6ace9485ac441a54f6ce42a99d8efaad6f532a9bfd48";
    revisions = {
      r0 = {
        nix = import ../hackage/postgresql-transactional-1.0.0-r0-9a9be90410c52493c638115855cb94487a4b97b29e363a7a781fa1f9046fdb9e.nix;
        revNum = 0;
        sha256 = "9a9be90410c52493c638115855cb94487a4b97b29e363a7a781fa1f9046fdb9e";
        };
      default = "r0";
      };
    };
  "1.1.1" = {
    sha256 = "f9302a1e134b31f2e9bd243c4fe36a25b3a9a9d6984288be1bc9c29882545ed3";
    revisions = {
      r0 = {
        nix = import ../hackage/postgresql-transactional-1.1.1-r0-07d38a5322ee278abdc01bbb7068196718bf4d0d77b08e1d8af4ac19e01e2883.nix;
        revNum = 0;
        sha256 = "07d38a5322ee278abdc01bbb7068196718bf4d0d77b08e1d8af4ac19e01e2883";
        };
      default = "r0";
      };
    };
  }