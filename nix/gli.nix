{
  "0.0.1" = {
    sha256 = "0f01413a108bb2d7eb59cbb36afd10f24e0d78237fa9c80d67e206828e19431a";
    revisions = {
      r0 = {
        nix = import ../hackage/gli-0.0.1-r0-2becbd7127cdbd34f23a752eaf26dbd3098eab2ec613e1b591b787f4b133e48a.nix;
        revNum = 0;
        sha256 = "2becbd7127cdbd34f23a752eaf26dbd3098eab2ec613e1b591b787f4b133e48a";
      };
      r1 = {
        nix = import ../hackage/gli-0.0.1-r1-6cdd03f0489a87e95b2706ea67773419f1019f76b77308729ab4ec105d7998a2.nix;
        revNum = 1;
        sha256 = "6cdd03f0489a87e95b2706ea67773419f1019f76b77308729ab4ec105d7998a2";
      };
      r2 = {
        nix = import ../hackage/gli-0.0.1-r2-0f2bc23aff2b63362e0287b297055f819a15a1f5939d35b864133efd9ac699ff.nix;
        revNum = 2;
        sha256 = "0f2bc23aff2b63362e0287b297055f819a15a1f5939d35b864133efd9ac699ff";
      };
      r3 = {
        nix = import ../hackage/gli-0.0.1-r3-c43682b72be5defc27d3e341b971dd8717acde24c285e816389b304aaf324339.nix;
        revNum = 3;
        sha256 = "c43682b72be5defc27d3e341b971dd8717acde24c285e816389b304aaf324339";
      };
      default = "r3";
    };
  };
  "0.0.1.1" = {
    sha256 = "0f328a32ec9d700fc89d4e517917f5d47053ff822ad3eb29129100cc43f6943b";
    revisions = {
      r0 = {
        nix = import ../hackage/gli-0.0.1.1-r0-253205f9058df53b2ecef4dadc26ccbae8d8d1f9671ca76dbd7b2781c6c0e955.nix;
        revNum = 0;
        sha256 = "253205f9058df53b2ecef4dadc26ccbae8d8d1f9671ca76dbd7b2781c6c0e955";
      };
      r1 = {
        nix = import ../hackage/gli-0.0.1.1-r1-209b399769c48d612e034f597367705b1cea6a3eccabaf35213af7429e1d273f.nix;
        revNum = 1;
        sha256 = "209b399769c48d612e034f597367705b1cea6a3eccabaf35213af7429e1d273f";
      };
      default = "r1";
    };
  };
}