from .blender import BlenderDataset
from .llff import LLFFDataset
from .phototourism import PhototourismDataset
from .evdata import EVDataset

dataset_dict = {'blender': BlenderDataset,
                'llff': LLFFDataset,
                'phototourism': PhototourismDataset,
                'evdata': EVDataset,}