{
  "2.0" = {
    sha256 = "275cadbcbce13f81198194d918100d9f3d8738e071a76fdf808fc51e9381d98b";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-appconfigdata-2.0-r0-a3aec28df1bd727581c33a23435c53e41d77312e05a36a66778e1a3048be4c6c.nix;
        revNum = 0;
        sha256 = "a3aec28df1bd727581c33a23435c53e41d77312e05a36a66778e1a3048be4c6c";
      };
      r1 = {
        nix = import ../hackage/amazonka-appconfigdata-2.0-r1-4fec680ca75197a818543e0c1353dfd8d5b8c89989b6343971249223707e56dc.nix;
        revNum = 1;
        sha256 = "4fec680ca75197a818543e0c1353dfd8d5b8c89989b6343971249223707e56dc";
      };
      default = "r1";
    };
  };
}