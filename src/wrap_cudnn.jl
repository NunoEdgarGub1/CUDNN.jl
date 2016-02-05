using Clang
run(wrap_c.init(headers = ["/mnt/home/dyuret/cudnn/4.0.4/include/cudnn.h"],
                # index = None,
                common_file="types.jl",
                output_file="libcudnn.jl",
                # output_dir = "",
                # clang_args = ASCIIString[],
                # clang_includes = ["/usr/lib/clang/3.4.2/include","/usr/local/cuda/include","/usr/include"],
                clang_includes = ["/usr/usc/clang/default/include", "/usr/usc/cuda/default/include"],
                # clang_diagnostics = true,
                header_wrapped=(header,cursorname)->(contains(cursorname,"cudnn")),
                header_library=x->"libcudnn",
                # header_outputfile = None,
                cursor_wrapped=(cursorname,cursor)->!isempty(cursorname),
                # options = InternalOptions(),
                # rewriter = x->x,
                ))
