module PyBullet

using PythonCall
const pybullet = PythonCall.pynew()
const pybullet_data = PythonCall.pynew()
const pybullet_planning = PythonCall.pynew()

function __init__()
    PythonCall.pycopy!(pybullet, pyimport("pybullet"))
    PythonCall.pycopy!(pybullet_data, pyimport("pybullet_data"))
    PythonCall.pycopy!(pybullet_planning, pyimport("pybullet_planning"))
end

export pybullet,
       pybullet_data,
       pybullet_planning
end


