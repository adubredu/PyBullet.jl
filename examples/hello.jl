using PyBullet
p = pybullet
pyplan = pybullet_planning

p.connect(p.GUI)
p.setAdditionalSearchPath(pybullet_data.getDataPath())
p.setGravity(0, 0, -9.81)
planeID = p.loadURDF("plane.urdf")
R2D2id = p.loadURDF("r2d2.urdf", [0,0,1], p.getQuaternionFromEuler([0.0,0.0,0.0]))

left_gripper_id = pyplan.link_from_name(R2D2id, "left_gripper")
pose = pyplan.get_link_pose(R2D2id, left_gripper_id)
println("Gripper Pose: $pose")

for i=1:10000
    p.stepSimulation()
    sleep(1.0/240.0)
end