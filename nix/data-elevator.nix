{
  "0.1.0.0" = {
    sha256 = "9e58b4707147a9adde4737c2d14d1659c3ca2a473e2ef701f432e3ea8af869df";
    revisions = {
      r0 = {
        nix = import ../hackage/data-elevator-0.1.0.0-r0-e3d8c7746e563b612504130380ecd40a9fdfa7bce83769a152de43e66fcbc625.nix;
        revNum = 0;
        sha256 = "e3d8c7746e563b612504130380ecd40a9fdfa7bce83769a152de43e66fcbc625";
      };
      default = "r0";
    };
  };
  "0.1.0.1" = {
    sha256 = "5f93919d1faeea6721636d47ec569ca2f1f085f313dc42b99443e461b16e4a48";
    revisions = {
      r0 = {
        nix = import ../hackage/data-elevator-0.1.0.1-r0-aed46cb3b753271a7c293c3da9c48bca1e4476078771fb72274aa907fdfe5ddc.nix;
        revNum = 0;
        sha256 = "aed46cb3b753271a7c293c3da9c48bca1e4476078771fb72274aa907fdfe5ddc";
      };
      default = "r0";
    };
  };
  "0.1.0.2" = {
    sha256 = "15d06f46692a03fd58e52c5cd142ca48911edc461222728c1d3f4b148f733b81";
    revisions = {
      r0 = {
        nix = import ../hackage/data-elevator-0.1.0.2-r0-e74670e82549f775b44615fc85efd18b046ffcde13dd070892fa093aa0fb514e.nix;
        revNum = 0;
        sha256 = "e74670e82549f775b44615fc85efd18b046ffcde13dd070892fa093aa0fb514e";
      };
      default = "r0";
    };
  };
  "0.2" = {
    sha256 = "f805917bd4d7b3f65b0385df4801e383ae0a0292ec9a81b9abbd6d83da32723b";
    revisions = {
      r0 = {
        nix = import ../hackage/data-elevator-0.2-r0-67aa5b63642bc00e6a08f8c94d906fd4908b6ddf598b4917955eaa284dcded07.nix;
        revNum = 0;
        sha256 = "67aa5b63642bc00e6a08f8c94d906fd4908b6ddf598b4917955eaa284dcded07";
      };
      r1 = {
        nix = import ../hackage/data-elevator-0.2-r1-920ecc79d6c1dda6f6f0f30dcf09774420a919302f52ca15fae275e31dd04788.nix;
        revNum = 1;
        sha256 = "920ecc79d6c1dda6f6f0f30dcf09774420a919302f52ca15fae275e31dd04788";
      };
      default = "r1";
    };
  };
}