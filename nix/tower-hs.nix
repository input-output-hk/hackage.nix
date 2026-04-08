{
  "0.1.0.0" = {
    sha256 = "f10484db2fb153561558c6f71d463a5779715028ca8f2320144f8c8545e9e65a";
    revisions = {
      r0 = {
        nix = import ../hackage/tower-hs-0.1.0.0-r0-b59a1b3854ce787cdf366382186446dd94715aaf6189e93289b34d01dba97a52.nix;
        revNum = 0;
        sha256 = "b59a1b3854ce787cdf366382186446dd94715aaf6189e93289b34d01dba97a52";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "b883d8001faedcc22af710d6046bbb1ffd5d8a16833440e2c62f96d6c9c3b6fa";
    revisions = {
      r0 = {
        nix = import ../hackage/tower-hs-0.2.0.0-r0-326be7c977908780d735402a01b34f6bdacce126a648295cb507a64977f20002.nix;
        revNum = 0;
        sha256 = "326be7c977908780d735402a01b34f6bdacce126a648295cb507a64977f20002";
      };
      default = "r0";
    };
  };
}