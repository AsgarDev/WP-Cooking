<?php

class oCookingRole
{
    public function addRole()
    {
        // Je crée un nouveau rôle pour mon cuisinier
        add_role(
            'cuisto',
            'Cuisinier chez oCooking Production',
            [
                'read' => true,
                'upload_files' => true,
                // 'edit_posts' => true,
            ]
        );
    }

    public function addCap()
    {
        // J'ajoute des capacités aux rôles existants

        $array_roles = [
            'administrator',
            'cuisto'
        ];

        foreach ($array_roles as $role_name) {

            $role = get_role($role_name);
            $role->add_cap('delete_recipes');
            $role->add_cap('delete_private_recipes');
            $role->add_cap('delete_published_recipes');
            $role->add_cap('delete_others_recipes');
            $role->add_cap('edit_private_recipes');
            $role->add_cap('edit_published_recipes');
            $role->add_cap('edit_others_recipes');
            $role->add_cap('edit_recipes');
            $role->add_cap('publish_recipes');
        }

        // $role = get_role('author');
        // $role->remove_cap('delete_published_posts');
    }

    public function removeRole()
    {
        remove_role('cuisto');
    }

    public function activation()
    {
        $this->addRole();
        $this->addCap();
    }

    public function deactivation()
    {
        $this->removeRole();
    }
}