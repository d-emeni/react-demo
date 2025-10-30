const API_BASE_URL = 'http://backend:5000';

export async function fetchUsers() {
  const res = await fetch(`${API_BASE_URL}/api/users`);

  if (!res.ok) {
    throw new Error('Failed to fetch users');
  }

  return res.json();
}