# Start with the existing datascience-notebook.
FROM jupyter/datascience-notebook:julia-1.5.0

# Install some extra packages into the container, otherwise they
# need to be installed each time the user runs the scripts. This is
# particularly painful with the plotting as the Pkg.add("Plots") takes
# several minutes each time the script is run.

RUN julia -e 'import Pkg; Pkg.add("Plots")' && \
    julia -e "using Pkg; pkg\"precompile\""