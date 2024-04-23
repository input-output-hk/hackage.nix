{
  "0.0.0" = {
    sha256 = "32a663917f04b27943eeea35803770fc006b6dba6c71b07e8fcbe8ed0920c095";
    revisions = {
      r0 = {
        nix = import ../hackage/psql-0.0.0-r0-9bceaccb4e9750d6228b807332f19cd102d6a5389d525b90a3f0d4edb35484b7.nix;
        revNum = 0;
        sha256 = "9bceaccb4e9750d6228b807332f19cd102d6a5389d525b90a3f0d4edb35484b7";
      };
      r1 = {
        nix = import ../hackage/psql-0.0.0-r1-bc2014ccabc892f02bef9f2b6cde61afd6e2b79663be5715ef13ec39b009d15d.nix;
        revNum = 1;
        sha256 = "bc2014ccabc892f02bef9f2b6cde61afd6e2b79663be5715ef13ec39b009d15d";
      };
      default = "r1";
    };
  };
}