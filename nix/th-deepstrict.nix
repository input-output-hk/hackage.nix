{
  "0.1.0.0" = {
    sha256 = "cefb8657dc1f7741736b8dd8812fe5d4b4b4e8881d0625a87176a7034d91742d";
    revisions = {
      r0 = {
        nix = import ../hackage/th-deepstrict-0.1.0.0-r0-61101e62699467786a0231cc27e6f690aeb6462355bb8d824919062158a63f6a.nix;
        revNum = 0;
        sha256 = "61101e62699467786a0231cc27e6f690aeb6462355bb8d824919062158a63f6a";
      };
      default = "r0";
    };
  };
  "0.1.1.0" = {
    sha256 = "178636ff4be2ae14407b5c85562556280d0d96c7973cc8165f9a90aaffa31c78";
    revisions = {
      r0 = {
        nix = import ../hackage/th-deepstrict-0.1.1.0-r0-2e5a044d0692b18a20fd1df16abba40fd9d27764c8e7a3a7817b5691144a36ec.nix;
        revNum = 0;
        sha256 = "2e5a044d0692b18a20fd1df16abba40fd9d27764c8e7a3a7817b5691144a36ec";
      };
      r1 = {
        nix = import ../hackage/th-deepstrict-0.1.1.0-r1-a92584cc878ec244d15e705dace152451e828ef39a57cc53e6de4e3db940373a.nix;
        revNum = 1;
        sha256 = "a92584cc878ec244d15e705dace152451e828ef39a57cc53e6de4e3db940373a";
      };
      r2 = {
        nix = import ../hackage/th-deepstrict-0.1.1.0-r2-1654f3ab27974a2caa5bdb398ca6678d50419f5d4ee4671798437a364b879ac0.nix;
        revNum = 2;
        sha256 = "1654f3ab27974a2caa5bdb398ca6678d50419f5d4ee4671798437a364b879ac0";
      };
      default = "r2";
    };
  };
}