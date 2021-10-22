using DemoPackageAL
using Documenter

DocMeta.setdocmeta!(DemoPackageAL, :DocTestSetup, :(using DemoPackageAL); recursive=true)

makedocs(;
    modules=[DemoPackageAL],
    authors="Alex Legaria <leg.alex96@gmail.com> and contributors",
    repo="https://github.com/AlexLM96/DemoPackageAL.jl/blob/{commit}{path}#{line}",
    sitename="DemoPackageAL.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://AlexLM96.github.io/DemoPackageAL.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/AlexLM96/DemoPackageAL.jl",
    devbranch="master",
)
