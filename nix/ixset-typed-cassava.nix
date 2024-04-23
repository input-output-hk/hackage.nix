{
  "0.0.1.0" = {
    sha256 = "b40eb8317ee2079f07cd1cd3c8f667557895da4fd0de887ce5ad307939ebe184";
    revisions = {
      r0 = {
        nix = import ../hackage/ixset-typed-cassava-0.0.1.0-r0-02095f3215db0ec9be0adc1ad043c22ee35078b351b49663ba67869677e46b73.nix;
        revNum = 0;
        sha256 = "02095f3215db0ec9be0adc1ad043c22ee35078b351b49663ba67869677e46b73";
      };
      default = "r0";
    };
  };
  "0.0.2.0" = {
    sha256 = "cc97e52e52b45ea5419cea81d5b34316a41886acfce7c529034c0a3c6f902063";
    revisions = {
      r0 = {
        nix = import ../hackage/ixset-typed-cassava-0.0.2.0-r0-722ab9511217e38a199defa1847bdde13e3971dc44727c450c2693d5c833612f.nix;
        revNum = 0;
        sha256 = "722ab9511217e38a199defa1847bdde13e3971dc44727c450c2693d5c833612f";
      };
      r1 = {
        nix = import ../hackage/ixset-typed-cassava-0.0.2.0-r1-f8208343b93a42dceef78ccff5697409aa29ad4da9d17518848f4800a828151f.nix;
        revNum = 1;
        sha256 = "f8208343b93a42dceef78ccff5697409aa29ad4da9d17518848f4800a828151f";
      };
      default = "r1";
    };
  };
}