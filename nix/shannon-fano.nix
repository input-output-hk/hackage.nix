{
  "0.1.0.0" = {
    sha256 = "3250ae2e82fec92fee85598227503429dd00ab90f72d9f2df10fd8c04aae8eb8";
    revisions = {
      r0 = {
        nix = import ../hackage/shannon-fano-0.1.0.0-r0-42f8cac157017d99850e2a3bbe86085b7090a2d3c8301108a9f67f72b018e14c.nix;
        revNum = 0;
        sha256 = "42f8cac157017d99850e2a3bbe86085b7090a2d3c8301108a9f67f72b018e14c";
      };
      default = "r0";
    };
  };
  "0.1.0.1" = {
    sha256 = "ae898cb8790122547ab6a6d903eceb2e7adb8934163a213cfb69fa106bf9b787";
    revisions = {
      r0 = {
        nix = import ../hackage/shannon-fano-0.1.0.1-r0-f5c20c515ae233d152361fc72e5661b490a4d4302df7e587f3ddc591d3f3b4c3.nix;
        revNum = 0;
        sha256 = "f5c20c515ae233d152361fc72e5661b490a4d4302df7e587f3ddc591d3f3b4c3";
      };
      r1 = {
        nix = import ../hackage/shannon-fano-0.1.0.1-r1-8c49dfa594a789f47da668c3d69dc9c47da735931bd336a94ddf9e9db18648b5.nix;
        revNum = 1;
        sha256 = "8c49dfa594a789f47da668c3d69dc9c47da735931bd336a94ddf9e9db18648b5";
      };
      default = "r1";
    };
  };
  "1.0.0.0" = {
    sha256 = "8bba4ed3534b1b77dce9a1950f0d8574280827e4564ffbbcb900b4d1634896dc";
    revisions = {
      r0 = {
        nix = import ../hackage/shannon-fano-1.0.0.0-r0-35d4d343c1e610fe36599c4c9037a5cb0e852233b74513acf3f175f281c13ad7.nix;
        revNum = 0;
        sha256 = "35d4d343c1e610fe36599c4c9037a5cb0e852233b74513acf3f175f281c13ad7";
      };
      default = "r0";
    };
  };
}