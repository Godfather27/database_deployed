class AddPasswordDigestToZombie < ActiveRecord::Migration
  def change
    add_column :zombies, :password_digest, :string
  end
end
